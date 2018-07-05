import * as Rx from 'rxjs'
import { Sources, Sinks } from './interfaces'
import { pluck } from 'rxjs/operator/pluck';

export function App(sources: Sources): Sinks {
  const vtree$ = Rx.Observable.of(
    <div>
      <h1>My Awesome Cycle.js app</h1>
      <h2>Created by Gabriel Wu</h2>
    </div>
  )

  return {
    DOM: vtree$
  }
}
