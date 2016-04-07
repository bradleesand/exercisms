(ns bob
  [:require [clojure.string :refer [ends-with? blank?]]])

(

(defn response-for [msg]
  (cond
    (blank? msg) "Fine. Be that way!"
    (let [letters (filter #(Character/isLetter %) msg)]
      (and (not (empty? letters))
           (every? #(Character/isUpperCase %) letters))) "Whoa, chill out!"
    (ends-with? msg "?") "Sure."
    :else "Whatever."))
