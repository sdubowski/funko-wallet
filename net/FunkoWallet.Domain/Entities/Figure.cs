using FunkoWallet.Domain.Enums;

namespace FunkoWallet.Domain.Entities;

public class Figure
{
    public string Id { get; set; }
    public string Name { get; set; }
    public FigureVariantEnum VariantEnumId { get; set; }
    public FigureSeriesEnum SeriesId { get; set; }
    public bool IsSpecialEdition { get; set; }
    public FigureSizeEnum SizeEnumId { get; set; }
    public FigureTypeEnum TypeEnumId { get; set; }
}