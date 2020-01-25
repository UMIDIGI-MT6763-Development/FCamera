.class public Lmf/org/apache/xerces/impl/dv/xs/DecimalDV;
.super Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;
.source "DecimalDV.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;

    check-cast p2, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;

    invoke-virtual {p1, p2}, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->compareTo(Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;)I

    move-result p1

    return p1
.end method

.method public getActualValue(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    :try_start_0
    new-instance p2, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;

    invoke-direct {p2, p1}, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    new-instance p2, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    const-string v1, "decimal"

    aput-object v1, v0, p1

    const-string p1, "cvc-datatype-valid.1.2.1"

    invoke-direct {p2, p1, v0}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2
.end method

.method public final getAllowedFacets()S
    .locals 1

    const/16 v0, 0xff8

    return v0
.end method

.method public final getFractionDigits(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;

    iget p1, p1, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->fracDigits:I

    return p1
.end method

.method public final getTotalDigits(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;

    iget p1, p1, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->totalDigits:I

    return p1
.end method
