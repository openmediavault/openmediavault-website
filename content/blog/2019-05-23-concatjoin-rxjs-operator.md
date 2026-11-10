---
title: "concatJoin RxJS operator"
date: 2019-05-23T14:42:54
slug: "concatjoin-rxjs-operator"
categories: ["Coding"]
---

Are you searching for a RxJS concat operator that works like forkJoin? Then have a look at the following simple code that will do that for you.

```
import { concat, EMPTY, Observable } from 'rxjs';

/**
 * Joins last values emitted by passed Observables.
 *
 * `concatJoin` is an operator that takes any number of Observables which
 * can be passed either as an array or directly as arguments. If no input
 * Observables are provided, resulting stream will complete immediately.
 *
 * `concatJoin` will wait for all passed Observables to complete one by
 * one and then it will emit an array with last values from corresponding
 * Observables. So if you pass `n` Observables to the operator, resulting
 * array will have `n` values, where first value is the last thing emitted
 * by the first Observable, second value is the last thing emitted by the
 * second Observable and so on. That means `concatJoin` will not emit more
 * than once and it will complete after that.
 *
 * @param {...Observable} sources Any number of Observables provided either
 * as an array or as an arguments passed directly to the operator.
 * @return {Observable} Observable emitting either an array of last values
 * emitted by passed Observables.
 */
export function concatJoin<T>(...sources: Array<Observable<T> | Observable<T>[]>): Observable<T[]> {
  // If the first and only other argument is an array assume it's been
  // called with `concatJoin([obs1, obs2, obs3])`
  if (sources.length === 1 && Array.isArray(sources[0])) {
    sources = sources[0] as Array<Observable<T>>;
  }

  if (sources.length === 0) {
    return EMPTY;
  }

  return new Observable((subscriber) => {
    const values: Array<T> = [];
    concat(...sources).subscribe(
      (value: T) => {
        values.push(value);
      },
      (err) => {
        subscriber.error(err);
      },
      () => {
        subscriber.next(values);
        subscriber.complete();
      }
    );
  });
}
```
