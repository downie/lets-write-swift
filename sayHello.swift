#!/usr/bin/swift
print("What's your name?")
let name = readLine()

if let name = name, !name.isEmpty {
  print("Hello, \(name)")
} else {
  print("You didn't enter a name. That's rude.")
}
