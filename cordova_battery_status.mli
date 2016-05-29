type t = private Ojs.t

val level : t -> int
val is_plugged : t -> bool

module Event :
  sig

    [@@@js.stop]
    val status : (t -> unit) -> unit
    val low : (t -> unit) -> unit
    val critical : (t -> unit) -> unit
    [@@@js.start]

    [@@@js.implem
      val add_event_listener : string -> (t -> unit) -> bool -> unit
      [@@js.global "window.addEventListener"]
      let status f = add_event_listener "batterystatus" f false
      let low f = add_event_listener "batterylow" f false
      let critical f = add_event_listener "batterycritical" f false
    ]
  end
