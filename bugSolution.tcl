proc get_element {list index} { 
  if {$index < 0 || $index >= [llength $list]} { 
    return -code error "Index out of range" 
  } 
  return [lindex $list $index] 
} 

# Example usage with error handling 
set mylist {a b c} 

# Correct usage 
puts [get_element $mylist 1]  ;# Output: b

# Incorrect usage with error handling 
puts [catch {get_element $mylist 3} msg]
puts $msg ;# Output: Index out of range

# Incorrect usage with negative index and error handling
puts [catch {get_element $mylist -1} msg]
puts $msg ;# Output: Index out of range