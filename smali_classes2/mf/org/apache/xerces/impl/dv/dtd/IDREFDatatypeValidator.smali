.class public Lmf/org/apache/xerces/impl/dv/dtd/IDREFDatatypeValidator;
.super Ljava/lang/Object;
.source "IDREFDatatypeValidator.java"

# interfaces
.implements Lmf/org/apache/xerces/impl/dv/DatatypeValidator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    invoke-interface {p2}, Lmf/org/apache/xerces/impl/dv/ValidationContext;->useNamespaces()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-static {p1}, Lmf/org/apache/xerces/util/XMLChar;->isValidNCName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string p1, "IDREFInvalidWithNamespaces"

    invoke-direct {p2, p1, v0}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2

    :cond_1
    invoke-static {p1}, Lmf/org/apache/xerces/util/XMLChar;->isValidName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    invoke-interface {p2, p1}, Lmf/org/apache/xerces/impl/dv/ValidationContext;->addIdRef(Ljava/lang/String;)V

    return-void

    :cond_2
    new-instance p2, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string p1, "IDREFInvalid"

    invoke-direct {p2, p1, v0}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2
.end method
