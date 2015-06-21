{-# LANGUAGE JavaScriptFFI,
             OverloadedStrings #-}

module Main (main) where

import           GHCJS.Types
import           GHCJS.Foreign

foreign import javascript unsafe "require($1)"
   require :: JSString -> IO (JSRef a)
foreign import javascript unsafe "$1.hostname()"
   hostname :: JSRef a -> IO JSString

main :: IO ()
main = require "os" >>= hostname
       >>= \h -> putStrLn $ "Our hostname is '" ++ (fromJSString h) ++ "'"
