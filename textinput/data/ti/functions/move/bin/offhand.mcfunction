## change slot to 0 and append to bin three
data modify storage ti:data inv[0].Slot set value 0b
data modify storage ti:data bin.three append from storage ti:data inv[0]