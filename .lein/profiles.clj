{:user {:aliases {"slamhound" ["run" "-m" "slam.hound"]}
        :signing {:gpg-key "63ECF780"}
        :plugins [[cider/cider-nrepl "0.8.2"]
                  ;;[lein-guzheng "RELEASE"]
                  ;;[com.cemerick/austin "0.1.5"]
                  [lein-datomic "RELEASE"]
                  [lein-immutant "1.2.3"]
                  [lein-kibit "RELEASE"]
                  [lein-localrepo "RELEASE"]
                  [lein-marginalia "RELEASE"]
                  [lein-midje "RELEASE"]
                  ;[lein-pprint "RELEASE"]
                  [lein-ring "RELEASE"]
                  [lein-swank "RELEASE"]
                  [lein-koan "RELEASE"]] 
        
        :dependencies [[org.clojure/tools.nrepl "RELEASE"]
                       [alembic "RELEASE"]
                       [slamhound "RELEASE"]]}}
