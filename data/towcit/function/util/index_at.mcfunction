#
#   Index At
#   
#   Purpose: Retrieve from a list at the provided index
#
#   Input: {index: int} (towcit:data index_at is a list)
#

$data modify storage towcit:data index_at set from storage towcit:data index_at[$(index)]

