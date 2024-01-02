

!(create-vspace-server &self 3023)

!(create-vspace-server &share1 3025)

!(remote-eval 2023 (add-atom &self A))

!(remote-eval 2025 (add-atom &self B))

!(assertEqual (match &self A :Pass) :Pass)

!(assertEqual (match &share1 B :Pass) :Pass)



