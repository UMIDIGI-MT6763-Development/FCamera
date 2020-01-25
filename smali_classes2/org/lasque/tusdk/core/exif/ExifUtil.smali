.class public Lorg/lasque/tusdk/core/exif/ExifUtil;
.super Ljava/lang/Object;


# static fields
.field static final a:Ljava/text/NumberFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/text/DecimalFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v0

    sput-object v0, Lorg/lasque/tusdk/core/exif/ExifUtil;->a:Ljava/text/NumberFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static processLensSpecifications([Lorg/lasque/tusdk/core/exif/Rational;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    aget-object v0, p0, v0

    const/4 v1, 0x1

    aget-object v2, p0, v1

    const/4 v3, 0x2

    aget-object v3, p0, v3

    const/4 v4, 0x3

    aget-object p0, p0, v4

    sget-object v4, Lorg/lasque/tusdk/core/exif/ExifUtil;->a:Ljava/text/NumberFormat;

    invoke-virtual {v4, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lorg/lasque/tusdk/core/exif/ExifUtil;->a:Ljava/text/NumberFormat;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/exif/Rational;->toDouble()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lorg/lasque/tusdk/core/exif/ExifUtil;->a:Ljava/text/NumberFormat;

    invoke-virtual {v2}, Lorg/lasque/tusdk/core/exif/Rational;->toDouble()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mm f/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lorg/lasque/tusdk/core/exif/ExifUtil;->a:Ljava/text/NumberFormat;

    invoke-virtual {v3}, Lorg/lasque/tusdk/core/exif/Rational;->toDouble()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lorg/lasque/tusdk/core/exif/ExifUtil;->a:Ljava/text/NumberFormat;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/exif/Rational;->toDouble()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
