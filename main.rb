#!/usr/bin/env ruby

require "google/cloud/firestore"
require 'sinatra'

firestore = Google::Cloud::Firestore.new

get '/' do
  result = ''
  firestore.col('hello').get do |data|
    result = data.data.to_s
  end
  result
end
