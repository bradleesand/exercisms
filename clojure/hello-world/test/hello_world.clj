(ns hello-world)



(defn hello [& [name]]
  (str "Hello, " (or name "World") "!"))
