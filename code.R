library(tidyverse)

read.csv("data.csv") %>% 
  ggplot(aes(x=Grupo, y=Eleicao)) +
  geom_col(fill="#66CD00") +
  geom_col(aes(x=Grupo, y=-Manifestacao), fill="#EE7600") +
  geom_text(aes(y=Eleicao, label=Eleicao), nudge_y = 3) +
  geom_text(aes(y=-Manifestacao, label=Manifestacao), nudge_y = -3) +
  coord_flip() +
  ggthemes::theme_fivethirtyeight() +
  theme(panel.grid = element_blank()) +
  facet_grid(Categoria~., scales="free", space="free") +
  labs(title = "Perfil da manifestação e do eleitorado do Bolsonaro",
       subtitle = "Comparação entre o perfil dos manifestantes na Av. Paulista no dia 26/05
       \ncom o perfil dos eleitores do Bolsonaro em SP",
       caption = "Fonte: Monitor do debate político no meio digital e Datafolha")

