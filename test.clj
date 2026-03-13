; run clojure -M test.clj

(defn solution [s]
  ;; (let [pairs (partition 2 2 [\_] s)]
  ;;   (map #(apply str %) pairs)))
  (->> s
      (partition 2 2 [\_])
      (map #(apply str %))))
    
(println (solution "abc"))