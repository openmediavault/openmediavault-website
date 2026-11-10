---
title: "A RxJS takeWhen operator"
date: 2021-01-08T11:08:14
slug: "a-rxjs-takewhen-operator"
categories: ["Coding"]
---

If you needed to poll a service and then take the response only when a specific property of the response was equal to a predicate, then the following RxJS operator might help you.

```
function takeWhen<T>(predicate: (value: T, index: number) => boolean) {
  return (source: Observable<T>): Observable<T> => source.pipe(filter(predicate), take(1));
}
```

Example:

```
interval(500).pipe(
  concatMap(() => this.http.post(...)),
  takeWhen((res: IRpcBgResponse) => {
    return res.running === false;
  })
);
```
