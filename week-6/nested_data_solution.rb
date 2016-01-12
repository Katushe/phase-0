# Hole 1
# Target element: "FORE"

array = [ [1,2], ["inner", ["eagle", "par", ["FORE", "hook"] ] ] ]

# attempts: 2
# ============================================================

# p array[1][1][0]
p array[1][1][2][0]

# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"} } } }

# attempts: 1
# ============================================================

p hash[:outer][:inner]["almost"][3]

# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"} ] }

# attempts: 2
# ============================================================

# p nested_data[:array][0][:hash]
p nested_data[:array][1][:hash]

# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

number_array.map!{|element|
  if element.kind_of?(Array)
    element.map!{|inner| inner += 5}
  else element + 5
end}

p number_array



# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"] ] ]

startup_names.map!{|element|
  if element.kind_of?(Array)
    element.map! {|inner|
      if inner.kind_of?(Array)
        inner.map! {|inner_2|
          inner_2 << "ly"
          }
    else
        inner << "ly"
    end
      }
  else
    element << "ly"
  end
  }

p startup_names