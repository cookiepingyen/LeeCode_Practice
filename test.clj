; run clojure -M test.clj

(def dna-map {\A \T, \T \A, \G \C, \C \G})

(defn dna-strand [dna]
  (apply str (map dna-map dna))
)


(println (dna-strand "ATTGC"))