.class public Lmf/org/apache/xerces/impl/dv/dtd/XML11IDDatatypeValidator;
.super Lmf/org/apache/xerces/impl/dv/dtd/IDDatatypeValidator;
.source "XML11IDDatatypeValidator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/dtd/IDDatatypeValidator;-><init>()V

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

    invoke-static {p1}, Lmf/org/apache/xerces/util/XML11Char;->isXML11ValidNCName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string p1, "IDInvalidWithNamespaces"

    invoke-direct {p2, p1, v0}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2

    :cond_1
    invoke-static {p1}, Lmf/org/apache/xerces/util/XML11Char;->isXML11ValidName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    invoke-interface {p2, p1}, Lmf/org/apache/xerces/impl/dv/ValidationContext;->isIdDeclared(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p2, p1}, Lmf/org/apache/xerces/impl/dv/ValidationContext;->addId(Ljava/lang/String;)V

    return-void

    :cond_2
    new-instance p2, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string p1, "IDNotUnique"

    invoke-direct {p2, p1, v0}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2

    :cond_3
    new-instance p2, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string p1, "IDInvalid"

    invoke-direct {p2, p1, v0}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2
.end method
