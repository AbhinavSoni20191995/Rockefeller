dat <- read.csv("cell.csv")

dat$Children_CCR2_obj_Count <- as.integer(dat$Children_CCR2_obj_Count)

str(dat)

ggplot( dat, aes(x= Parent_Nucleus, fill = Children_CCR2_obj_Count)) +
  geom_bar() +
  xlab("Nuclei Number") +
  ylab("RNA transcript") +
  labs(fill= "Children_CCLR2_obj_Count")


ggplot( dat, aes(x= as.factor(Parent_Nucleus), fill = Children_CCL2_obj_Count)) +
  geom_histogram() +
  xlab("Nuclei Number") +
  ylab("RNA transcript") +
  labs(fill= "Children_CCL2_obj_Count")

ggplot( dat, aes(x= as.factor(Parent_Nucleus), fill = Children_MCH_obj_Count)) +
  geom_bar() +
  xlab("Nuclei Number") +
  ylab("RNA transcript") +
  labs(fill= "Children_MCH_obj_Count")

ggplot(dat, aes(Children_CCL2_obj_Count)) +
  geom_density(adjust=5)

ggplot(dat, aes(Children_CCR2_obj_Count)) +
  geom_density(adjust=5)

ggplot(dat, aes(Children_MCH_obj_Count)) +
  geom_density(adjust=5)


ggplot(dat, aes(x=Parent_Nucleus, y=Children_CCL2_obj_Count)) +
  theme_bw() +
   geom_point()

ggplot(dat, aes(x=Parent_Nucleus, y=Children_CCR2_obj_Count)) +
  theme_bw() +
  geom_point()


ggplot(dat, aes(x=Parent_Nucleus, y=Children_MCH_obj_Count)) +
  theme_bw() +
   geom_point()

summary(dat$Children_CCR2_obj_Count)
summary(dat$Children_CCL2_obj_Count)
summary(dat$Children_MCH_obj_Count)

########################################################################

