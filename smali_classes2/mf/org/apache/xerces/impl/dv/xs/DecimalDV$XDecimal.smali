.class Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;
.super Ljava/lang/Object;
.source "DecimalDV.java"

# interfaces
.implements Lmf/org/apache/xerces/xs/datatypes/XSDecimal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/dv/xs/DecimalDV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "XDecimal"
.end annotation


# instance fields
.field private canonical:Ljava/lang/String;

.field fracDigits:I

.field fvalue:Ljava/lang/String;

.field intDigits:I

.field integer:Z

.field ivalue:Ljava/lang/String;

.field sign:I

.field totalDigits:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->sign:I

    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->totalDigits:I

    iput v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->intDigits:I

    iput v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->fracDigits:I

    const-string v1, ""

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->ivalue:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->fvalue:Ljava/lang/String;

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->integer:Z

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->initD(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->sign:I

    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->totalDigits:I

    iput v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->intDigits:I

    iput v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->fracDigits:I

    const-string v1, ""

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->ivalue:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->fvalue:Ljava/lang/String;

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->integer:Z

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->initI(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->initD(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private intComp(Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;)I
    .locals 4

    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->intDigits:I

    iget v1, p1, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->intDigits:I

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v1, :cond_1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    return v2

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->ivalue:Ljava/lang/String;

    iget-object v1, p1, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->ivalue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    if-lez v0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    return v2

    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->fvalue:Ljava/lang/String;

    iget-object p1, p1, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->fvalue:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_4

    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    if-lez p1, :cond_5

    goto :goto_2

    :cond_5
    move v2, v3

    :goto_2
    return v2
.end method

.method private makeCanonical()V
    .locals 3

    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->sign:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->integer:Z

    if-eqz v0, :cond_0

    const-string v0, "0"

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->canonical:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "0.0"

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->canonical:Ljava/lang/String;

    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->integer:Z

    if-eqz v1, :cond_2

    if-lez v0, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->ivalue:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->canonical:Ljava/lang/String;

    return-void

    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->totalDigits:I

    add-int/lit8 v1, v1, 0x3

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->sign:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_3
    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->intDigits:I

    const/16 v2, 0x30

    if-eqz v1, :cond_4

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->ivalue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->integer:Z

    if-nez v1, :cond_6

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->fracDigits:I

    if-eqz v1, :cond_5

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->fvalue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_6
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->canonical:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compareTo(Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;)I
    .locals 2

    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->sign:I

    iget v1, p1, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->sign:I

    if-eq v0, v1, :cond_1

    if-le v0, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1

    :cond_1
    if-nez v0, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_2
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->intComp(Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;)I

    move-result p1

    mul-int/2addr v0, p1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;

    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->sign:I

    iget v3, p1, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->sign:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    if-nez v1, :cond_3

    return v0

    :cond_3
    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->intDigits:I

    iget v3, p1, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->intDigits:I

    if-ne v1, v3, :cond_4

    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->fracDigits:I

    iget v3, p1, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->fracDigits:I

    if-ne v1, v3, :cond_4

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->ivalue:Ljava/lang/String;

    iget-object v3, p1, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->ivalue:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->fvalue:Ljava/lang/String;

    iget-object p1, p1, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->fvalue:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    return v0

    :cond_4
    return v2
.end method

.method public getBigDecimal()Ljava/math/BigDecimal;
    .locals 2

    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->sign:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/math/BigDecimal;

    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getBigInteger()Ljava/math/BigInteger;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->fracDigits:I

    if-nez v0, :cond_2

    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->sign:I

    if-nez v0, :cond_0

    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    return-object v0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->ivalue:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/math/BigInteger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->ivalue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0}, Ljava/lang/NumberFormatException;-><init>()V

    throw v0
.end method

.method public getByte()B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->fracDigits:I

    if-nez v0, :cond_2

    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->sign:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->ivalue:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    return v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->ivalue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    return v0

    :cond_2
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0}, Ljava/lang/NumberFormatException;-><init>()V

    throw v0
.end method

.method public getInt()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->fracDigits:I

    if-nez v0, :cond_2

    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->sign:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->ivalue:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->ivalue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_2
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0}, Ljava/lang/NumberFormatException;-><init>()V

    throw v0
.end method

.method public getLong()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->fracDigits:I

    if-nez v0, :cond_2

    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->sign:I

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->ivalue:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->ivalue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_2
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0}, Ljava/lang/NumberFormatException;-><init>()V

    throw v0
.end method

.method public getShort()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->fracDigits:I

    if-nez v0, :cond_2

    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->sign:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->ivalue:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v0

    return v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->ivalue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v0

    return v0

    :cond_2
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0}, Ljava/lang/NumberFormatException;-><init>()V

    throw v0
.end method

.method initD(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_11

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2b

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_1

    const/4 v2, -0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->sign:I

    goto :goto_0

    :cond_1
    move v4, v1

    :goto_0
    move v2, v4

    :goto_1
    const/16 v3, 0x30

    if-ge v2, v0, :cond_3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v3, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    move v5, v2

    :goto_3
    if-ge v5, v0, :cond_5

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->isDigit(C)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    if-ge v5, v0, :cond_7

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2e

    if-ne v6, v7, :cond_6

    add-int/lit8 v6, v5, 0x1

    goto :goto_5

    :cond_6
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-direct {p1}, Ljava/lang/NumberFormatException;-><init>()V

    throw p1

    :cond_7
    move v0, v1

    move v6, v0

    :goto_5
    if-ne v4, v5, :cond_9

    if-eq v6, v0, :cond_8

    goto :goto_6

    :cond_8
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-direct {p1}, Ljava/lang/NumberFormatException;-><init>()V

    throw p1

    :cond_9
    :goto_6
    if-le v0, v6, :cond_b

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v3, :cond_a

    goto :goto_7

    :cond_a
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_b
    :goto_7
    move v3, v6

    :goto_8
    if-lt v3, v0, :cond_f

    sub-int v3, v5, v2

    iput v3, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->intDigits:I

    sub-int v3, v0, v6

    iput v3, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->fracDigits:I

    iget v3, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->intDigits:I

    iget v4, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->fracDigits:I

    add-int v7, v3, v4

    iput v7, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->totalDigits:I

    if-lez v3, :cond_c

    invoke-virtual {p1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->ivalue:Ljava/lang/String;

    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->fracDigits:I

    if-lez v1, :cond_e

    invoke-virtual {p1, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->fvalue:Ljava/lang/String;

    goto :goto_9

    :cond_c
    if-lez v4, :cond_d

    invoke-virtual {p1, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->fvalue:Ljava/lang/String;

    goto :goto_9

    :cond_d
    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->sign:I

    :cond_e
    :goto_9
    return-void

    :cond_f
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_10

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_10
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-direct {p1}, Ljava/lang/NumberFormatException;-><init>()V

    throw p1

    :cond_11
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-direct {p1}, Ljava/lang/NumberFormatException;-><init>()V

    throw p1
.end method

.method initI(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_9

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2b

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_1

    const/4 v2, -0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->sign:I

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_3

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x30

    if-eq v5, v6, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    move v5, v3

    :goto_3
    if-ge v5, v0, :cond_5

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->isDigit(C)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    if-lt v5, v0, :cond_8

    if-eq v2, v5, :cond_7

    sub-int v0, v5, v3

    iput v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->intDigits:I

    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->fracDigits:I

    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->intDigits:I

    iput v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->totalDigits:I

    if-lez v0, :cond_6

    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->ivalue:Ljava/lang/String;

    goto :goto_5

    :cond_6
    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->sign:I

    :goto_5
    iput-boolean v4, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->integer:Z

    return-void

    :cond_7
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-direct {p1}, Ljava/lang/NumberFormatException;-><init>()V

    throw p1

    :cond_8
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-direct {p1}, Ljava/lang/NumberFormatException;-><init>()V

    throw p1

    :cond_9
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-direct {p1}, Ljava/lang/NumberFormatException;-><init>()V

    throw p1
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->canonical:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->makeCanonical()V

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->canonical:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
