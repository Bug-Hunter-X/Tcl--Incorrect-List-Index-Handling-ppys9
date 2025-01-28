# Tcl List Index Handling Bug

This repository demonstrates a common error in Tcl programming: improper handling of list indices. The `bug.tcl` file contains a procedure that attempts to access list elements but fails to correctly handle cases where the index is out of bounds. This can lead to unexpected behavior or crashes. The `bugSolution.tcl` file provides a corrected version of the procedure that robustly manages index errors.

## Bug Description
The original `get_element` procedure lacks proper error checking for index values that are less than 0 or greater than or equal to the list's length. Attempting to access an element outside the valid range can cause errors. 

## Solution
The corrected version adds a check to ensure the index is within the bounds of the list. If an invalid index is encountered, it returns an error code and a descriptive error message.