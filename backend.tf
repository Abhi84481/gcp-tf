terraform { 
  cloud { 
    hostname = "terraform-dev.nawat.me" 
    organization = "ADC" 

    workspaces { 
      name = "pipeline-test" 
    } 
  } 
}
