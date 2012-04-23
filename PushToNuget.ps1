# nuget SetApiKey Your-API-Key
"Pack $_"
nuget pack FlagSprites.nuspec

gci *.nupkg | %{
	"Push $_"
	nuget push $_
	rm $_
}