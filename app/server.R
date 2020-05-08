# Define server function
server <- function(input, output,session) {
  #switch tab to the distribution selected
  observeEvent(input$distribution, {
    updateTabsetPanel(session, "params", selected = input$distribution)
  }) 
  
  #generate sample from the corresponding distribution selected
  sample <- reactive({
    switch(input$distribution,
           "Normal" = function_list[[which(names(function_list)==input$distribution)]][[1]](input$sample_size, mean=input$mean, sd=input$sd),
           "Poisson" = function_list[[which(names(function_list)==input$distribution)]][[1]](input$sample_size, lambda=input$lambda),
           "Beta" = function_list[[which(names(function_list)==input$distribution)]][[1]](input$sample_size, shape1=input$shape1,shape2=input$shape2),
           "Binomial" = function_list[[which(names(function_list)==input$distribution)]][[1]](input$sample_size, size=input$size,prob=input$prob),
           "Cauchy" = function_list[[which(names(function_list)==input$distribution)]][[1]](input$sample_size, location=input$location,scale=input$scale),
           "Chi_squared" = function_list[[which(names(function_list)==input$distribution)]][[1]](input$sample_size, df=input$df),
           "Exponential" = function_list[[which(names(function_list)==input$distribution)]][[1]](input$sample_size, rate=input$rate),
           "F_distribution" = function_list[[which(names(function_list)==input$distribution)]][[1]](input$sample_size, df1=input$df1,df2=input$df2),
           "Gamma " = function_list[[which(names(function_list)==input$distribution)]][[1]](input$sample_size, shape=input$shape_gamma, rate=input$rate_gamma),
           "Geometric" = function_list[[which(names(function_list)==input$distribution)]][[1]](input$sample_size, prob=input$prob_geometric),
           "Hypergeometric" = function_list[[which(names(function_list)==input$distribution)]][[1]](input$sample_size, m=input$m,n=input$n,k=input$k),
           "Lognormal" = function_list[[which(names(function_list)==input$distribution)]][[1]](input$sample_size, meanlog=input$meanlog,sdlog=input$sdlog),
           "Negative_Binomial" = function_list[[which(names(function_list)==input$distribution)]][[1]](input$sample_size, size=input$size_negb, prob=input$prob_negb),
           "Students_t" = function_list[[which(names(function_list)==input$distribution)]][[1]](input$sample_size, df=input$df_st),
           "Uniform" = function_list[[which(names(function_list)==input$distribution)]][[1]](input$sample_size, min=input$min,max=input$max),
           "Weibull" = function_list[[which(names(function_list)==input$distribution)]][[1]](input$sample_size, shape=input$shape_weibull,scale=input$scale_weibull)
           
    )
  })
  
  #plot density distribution and histogram
  output$histplot <- renderPlot({
    #define a dataframe for plotting purposes
    f_df <- data.frame(gen_x=sample())
    #density + histogram
    ggplot(f_df, aes(x=gen_x)) + 
      geom_histogram( aes(y=..density..),colour="black", fill="white",bins=dim(f_df)[1]/10)+
      geom_density(alpha=.2, fill="#FF6666") + 
      xlab('sample values') 
  })
  
  #give the documentation provided by R for distribution selected
  output$literatureOutput <- renderText({
    temp = Rd2HTML(Rd_fun(function_list[[which(names(function_list)==input$distribution)]][[2]]),out = tempfile("docs"))
    content = read_file(temp)
    file.remove(temp)
    content
  })


}
