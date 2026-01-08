package main

import "github.com/gin-gonic/gin"

func main() {
  router := gin.Default()
  router.GET("/hello", func(c *gin.Context) {
    name := c.Query("name")
    if name == "" {
      name = "World"
    }
    c.JSON(200, gin.H{
      "message": "Hello " + name + "!",
      "version": gin.Version,
    })
  })
  router.Run(":8080")
}
