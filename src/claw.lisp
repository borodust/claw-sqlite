(claw:defwrapper (:claw-sqlite
                  (:system :claw-sqlite/wrapper)
                  (:headers "claw_sqlite3.h")
                  (:includes :sqlite-includes)
                  (:include-definitions "^SQLITE_\\w+" "^sqlite3_\\w+"
                                        "^SQLITE_REDEFINED_")
                  (:targets ((:and :x86-64 :linux) "x86_64-pc-linux-gnu")
                            ((:and :x86-64 :windows) "x86_64-w64-mingw32")
                            ((:and :x86-64 :darwin) "x86_64-apple-darwin-gnu"))
                  (:persistent t))
  :in-package :%sqlite
  :trim-enum-prefix t
  :recognize-bitfields t
  :recognize-strings t
  :symbolicate-names (:by-removing-prefixes "SQLITE_" "sqlite3_"))
