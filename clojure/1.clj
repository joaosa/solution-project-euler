(defn multiple-3-or-5? [a] (or (= 0 (mod a 3)) (= 0 (mod a 5))))

(defn sum-multiples [limit]
  (let [number-range (range 1 limit)
        multiples (filter multiple-3-or-5? number-range)]
    (reduce + multiples)))

(print (sum-multiples 1000))
