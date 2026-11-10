---
title: "Dynamically inject routes in lazy loaded modules using Angular 11"
date: 2020-12-13T00:35:44
slug: "dynamically-inject-routes-in-lazy-loaded-modules-using-angular"
categories: ["Coding"]
---

If you would like to dynamically inject routes in lazy loaded modules in your Angular 11 app, then you need to do the following.

Make sure your service that is responsible for loading the route configuration via HTTP from the server is loading while the app is bootstrapped. This way we can be sure the route configuration is available after the app is bootstrapped.

```
const routes: Routes = [
  ...,
  { path: '**', redirectTo: '/404' }
];

@NgModule({
  exports: [RouterModule],
  imports: [
    RouterModule.forRoot(routes, {
      useHash: true
    })
  ],
  providers: [
    RouteConfigService,
    {
      provide: APP_INITIALIZER,
      useFactory: (routeConfigService: RouteConfigService) => {
        return () => {
          return routeConfigService.load().toPromise();
        };
      },
      multi: true,
      deps: [RouteConfigService]
    }
  ]
})
export class AppRoutingModule {}
```

You also need to ensure that your service is a singleton across the whole app.

```
@NgModule({
  declarations: [],
  imports: [...],
  exports: [...]
})
export class CoreModule {
  static forRoot(): ModuleWithProviders<CoreModule> {
    return {
      ngModule: CoreModule,
      providers: [
        RouteConfigService
      ]
    };
  }
}
```

```
@NgModule({
  declarations: [AppComponent],
  imports: [
    ...
    CoreModule.forRoot(),
    AppRoutingModule
  ],
  providers: [...],
  bootstrap: [AppComponent]
})
export class AppModule {}
```

And finally append the following provider in your lazy loaded module.

```
const routes: Routes = [
  ...
];

@NgModule({
  exports: [RouterModule],
  imports: [RouterModule.forChild(routes)],
  providers: [
    {
      provide: ROUTES,
      multi: true,
      useFactory: (routeConfigService: RouteConfigService) => {
        routeConfigService.inject('someArgsToIdentifyWhatToInject', routes);
        return routes;
      },
      deps: [RouteConfigService]
    }
  ]
})
export class MyLayzRoutingModule {}
```

```
@NgModule({
  declarations: [
    ...
  ],
  imports: [
    ...,
    MyLayzRoutingModule
  ]
})
export class LazyModule {}
```
