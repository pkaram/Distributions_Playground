# Define UI
ui <- fluidPage(theme = shinytheme("superhero"),
                titlePanel(h1("Distributions Playground", align = "center"),windowTitle = "Distributions Playground"),
                sidebarLayout(
                  sidebarPanel(
                    
                  #select distribution to review
                  selectInput(inputId = "distribution", label = h4("Select Distribution"),
                                choices = names(function_list),
                                selected = "Normal")
                  ,
                  
                  #select sample size
                  sliderInput(inputId="sample_size", h4("Sample Size"),
                              min = 50, max = 1000, value = 200,step = 50),
                  
                  #switch available parameters according to distribution selection
                  tagList(
                    tags$style("#params { display:none; }"),
                    tabsetPanel(id = "params",
                                tabPanel("Normal",
                                         numericInput("mean", "mean", value = 0),
                                         numericInput("sd", "standard deviation", min = 0, value = 1)
                                ),
                                tabPanel("Poisson", 
                                         numericInput("lambda", "lambda", value = 0.1)
                                ),
                                tabPanel("Beta",
                                         numericInput("shape1", "shape1", value = 2, min = 0),
                                         numericInput("shape2", "shape2", value = 4, min = 0)
                                ),
                                tabPanel("Binomial",
                                         numericInput("size", "size", value = 100, min = 0),
                                         numericInput("prob", "prob", value = 0.2, min = 0,max=1)
                                ),
                                tabPanel("Cauchy",
                                         numericInput("location", "location", value = 0, min = 0),
                                         numericInput("scale", "scale", value = 1, min = 0)
                                ),
                                tabPanel("Chi_squared",
                                         numericInput("df", "df", value = 3, min = 0)
                                ),
                                tabPanel("Exponential",
                                         numericInput("rate", "rate", value = 1, min = 0)
                                ),
                                tabPanel("F_distribution",
                                         numericInput("df1", "df1", value = 5, min = 0),
                                         numericInput("df2", "df2", value = 20, min = 0)
                                ),
                                tabPanel("Gamma ",
                                         numericInput("shape_gamma", "shape", value = 1, min = 0),
                                         numericInput("rate_gamma", "rate", value = 1, min = 0)
                                ),
                                tabPanel("Geometric",
                                         numericInput("prob_geometric", "prob", value = 0.4, min = 0,max=1)
                                ),
                                tabPanel("Hypergeometric",
                                         numericInput("m", "m", value = 500, min = 0),
                                         numericInput("n", "n", value = 200, min = 0),
                                         numericInput("k", "k", value = 200, min = 0)
                                ),
                                tabPanel("Lognormal",
                                         numericInput("meanlog", "meanlog", value = 0, min = 0),
                                         numericInput("sdlog", "sdlog", value = 1, min = 0)
                                ),
                                tabPanel("Negative_Binomial",
                                         numericInput("size_negb", "size", value = 100, min = 0),
                                         numericInput("prob_negb", "prob", value = 0.2, min = 0)
                                ),
                                tabPanel("Students_t",
                                         numericInput("df_st", "df", value = 10, min = 0)
                                ),
                                tabPanel("Uniform",
                                         numericInput("min", "min", value = 0, min = 0),
                                         numericInput("max", "max", value = 1, min = 0)
                                ),
                                tabPanel("Weibull",
                                         numericInput("shape_weibull", "shape", value = 1, min = 0),
                                         numericInput("scale_weibull", "scale", value = 1, min = 0)
                                )
                          
                    )
                  )
                  
                  ),
                  
                  mainPanel(
                    
                    #density and histogram
                    plotOutput(outputId = "histplot", height = "300px"),
                    
                    #show the R info on the function
                    htmlOutput("literatureOutput")
                  )
                  
                )
                
)





