(ns bank.core)

(defn balance 
  "show balance in an account"
  [accounts index]
  (nth @accounts index))

(defn credit 
  "add money to an account"
  [accounts index amount]
  (dosync
    (alter accounts assoc index (+ (balance accounts index) amount))
  )
)

(defn debit
  "take money from account"
  [accounts id amount]
  (credit accounts id (- amount))
)

(defn -main
  "I don't do a whole lot."
  []
  (do
    ; create the bank
    (def accounts (ref [0 0 0]))

    ; put some money in
    (credit accounts 0 100)
    (credit accounts 1 50)
    (credit accounts 2 75)

    ; show the balances
    (println @accounts)

    ; take some money out
    (debit accounts 0 50)
    (debit accounts 2 25)

    ; show the balances
    (println @accounts)
  )
)
