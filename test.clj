; run clojure -M test.clj

(require '[clojure.string :as str])

(defn high-and-low [s]
  ; 把字串轉成 str_array，再轉成 int_array
  (let [nums (map #(Integer/parseInt %) (str/split s #" "))
        max-num (apply max nums)
        min-num (apply min nums)]
    (str/join " " [max-num min-num]))   
)


(println (high-and-low "1 9 3 4 -5"))