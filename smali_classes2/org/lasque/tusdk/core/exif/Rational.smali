.class public Lorg/lasque/tusdk/core/exif/Rational;
.super Ljava/lang/Object;


# instance fields
.field private final a:J

.field private final b:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/lasque/tusdk/core/exif/Rational;->a:J

    iput-wide p3, p0, Lorg/lasque/tusdk/core/exif/Rational;->b:J

    return-void
.end method

.method public constructor <init>(Lorg/lasque/tusdk/core/exif/Rational;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v0, p1, Lorg/lasque/tusdk/core/exif/Rational;->a:J

    iput-wide v0, p0, Lorg/lasque/tusdk/core/exif/Rational;->a:J

    iget-wide v0, p1, Lorg/lasque/tusdk/core/exif/Rational;->b:J

    iput-wide v0, p0, Lorg/lasque/tusdk/core/exif/Rational;->b:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Lorg/lasque/tusdk/core/exif/Rational;

    if-eqz v2, :cond_2

    check-cast p1, Lorg/lasque/tusdk/core/exif/Rational;

    iget-wide v2, p0, Lorg/lasque/tusdk/core/exif/Rational;->a:J

    iget-wide v4, p1, Lorg/lasque/tusdk/core/exif/Rational;->a:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lorg/lasque/tusdk/core/exif/Rational;->b:J

    iget-wide v4, p1, Lorg/lasque/tusdk/core/exif/Rational;->b:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_2

    move v0, v1

    :cond_2
    return v0
.end method

.method public getDenominator()J
    .locals 2

    iget-wide v0, p0, Lorg/lasque/tusdk/core/exif/Rational;->b:J

    return-wide v0
.end method

.method public getNumerator()J
    .locals 2

    iget-wide v0, p0, Lorg/lasque/tusdk/core/exif/Rational;->a:J

    return-wide v0
.end method

.method public toDouble()D
    .locals 4

    iget-wide v0, p0, Lorg/lasque/tusdk/core/exif/Rational;->a:J

    long-to-double v0, v0

    iget-wide v2, p0, Lorg/lasque/tusdk/core/exif/Rational;->b:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lorg/lasque/tusdk/core/exif/Rational;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/lasque/tusdk/core/exif/Rational;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
