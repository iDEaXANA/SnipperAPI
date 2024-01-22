namespace SnipperAPI.Models
{
    public partial class Snipp
    {
        public int ItemId { get; set; } // Might not be necessary
        public string Language { get; set; } = "";
        public string Code { get; set; } = "";
    }
}