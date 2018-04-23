(ns daytwo.core)

(defprotocol
  Animal
  (call [this])
  (poop [this])
  (speak [this]))

(defrecord Dog 
  [name]
  Animal
  (call [this] (println name "come!"))
  (poop [this] (println "Here comes some poop... Better get a bag :)"))
  (speak [this] (println "Woof!")))

(defmacro 
  unless
  [test ifcode elsecode]
  `(if (not ~test)
    ~ifcode
    ~elsecode
    )
)

(defn -main
  "I don't do a whole lot."
  []
  (do
    (unless true (println "If code") (println "Else code"))
    (def d (Dog. "Linus"))
    (call d)
    (speak d)
    (poop d)
  )
)
