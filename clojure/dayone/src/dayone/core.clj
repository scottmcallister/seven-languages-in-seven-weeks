(ns dayone.core)

(defn big
  "Determines if the size of a string is larger than a given number"
  [str, len]
  (> (count str) len))

(defn collection-type
  "Returns type of a given collection"
  [col]
  (cond
    (list? col) ":List"
    (map? col) ":Map"
    (vector? col) ":Vector"
    :else "not sure"
  ))

(defn -main
  "I don't do a whole lot."
  []
  (do
    (if (big "Scott" 3)
      (println "\"Scott\" is longer than 3 letters")
      (println "\"Scott\" is shorter than 3 letters")
    )
    (println "Type of '(): " (collection-type '()))
  )
)