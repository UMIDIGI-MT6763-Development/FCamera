.class public Lmf/org/apache/xerces/impl/dv/xs/IntegerDV;
.super Lmf/org/apache/xerces/impl/dv/xs/DecimalDV;
.source "IntegerDV.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV;-><init>()V

    return-void
.end method


# virtual methods
.method public getActualValue(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    const/4 p2, 0x1

    :try_start_0
    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;

    invoke-direct {v0, p1, p2}, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "integer"

    aput-object p1, v1, p2

    const-string p1, "cvc-datatype-valid.1.2.1"

    invoke-direct {v0, p1, v1}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method
