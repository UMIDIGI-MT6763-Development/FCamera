.class public Lmf/org/apache/xerces/impl/xs/XSImplementationImpl;
.super Lmf/org/apache/xerces/dom/PSVIDOMImplementationImpl;
.source "XSImplementationImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/xs/XSImplementation;


# static fields
.field static final singleton:Lmf/org/apache/xerces/impl/xs/XSImplementationImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmf/org/apache/xerces/impl/xs/XSImplementationImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XSImplementationImpl;-><init>()V

    sput-object v0, Lmf/org/apache/xerces/impl/xs/XSImplementationImpl;->singleton:Lmf/org/apache/xerces/impl/xs/XSImplementationImpl;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmf/org/apache/xerces/dom/PSVIDOMImplementationImpl;-><init>()V

    return-void
.end method

.method public static getDOMImplementation()Lmf/org/w3c/dom/DOMImplementation;
    .locals 1

    sget-object v0, Lmf/org/apache/xerces/impl/xs/XSImplementationImpl;->singleton:Lmf/org/apache/xerces/impl/xs/XSImplementationImpl;

    return-object v0
.end method


# virtual methods
.method public createLSInputList([Lmf/org/w3c/dom/ls/LSInput;)Lmf/org/apache/xerces/xs/LSInputList;
    .locals 2

    if-eqz p1, :cond_0

    array-length v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    new-instance v1, Lmf/org/apache/xerces/impl/xs/util/LSInputListImpl;

    invoke-virtual {p1}, [Lmf/org/w3c/dom/ls/LSInput;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lmf/org/w3c/dom/ls/LSInput;

    invoke-direct {v1, p1, v0}, Lmf/org/apache/xerces/impl/xs/util/LSInputListImpl;-><init>([Lmf/org/w3c/dom/ls/LSInput;I)V

    goto :goto_1

    :cond_1
    sget-object v1, Lmf/org/apache/xerces/impl/xs/util/LSInputListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/LSInputListImpl;

    :goto_1
    return-object v1
.end method

.method public createStringList([Ljava/lang/String;)Lmf/org/apache/xerces/xs/StringList;
    .locals 2

    if-eqz p1, :cond_0

    array-length v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    new-instance v1, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;

    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-direct {v1, p1, v0}, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;-><init>([Ljava/lang/String;I)V

    goto :goto_1

    :cond_1
    sget-object v1, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/StringListImpl;

    :goto_1
    return-object v1
.end method

.method public createXSLoader(Lmf/org/apache/xerces/xs/StringList;)Lmf/org/apache/xerces/xs/XSLoader;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xs/XSException;
        }
    .end annotation

    new-instance v0, Lmf/org/apache/xerces/impl/xs/XSLoaderImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XSLoaderImpl;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/StringList;->getLength()I

    move-result v3

    if-lt v2, v3, :cond_1

    return-object v0

    :cond_1
    invoke-interface {p1, v2}, Lmf/org/apache/xerces/xs/StringList;->item(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1.0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {p1, v2}, Lmf/org/apache/xerces/xs/StringList;->item(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v1

    const-string p1, "http://www.w3.org/dom/DOMTR"

    const-string v1, "FEATURE_NOT_SUPPORTED"

    invoke-static {p1, v1, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lmf/org/apache/xerces/xs/XSException;

    invoke-direct {v1, v0, p1}, Lmf/org/apache/xerces/xs/XSException;-><init>(SLjava/lang/String;)V

    throw v1
.end method

.method public getRecognizedVersions()Lmf/org/apache/xerces/xs/StringList;
    .locals 3

    new-instance v0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;

    const-string v1, "1.0"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;-><init>([Ljava/lang/String;I)V

    return-object v0
.end method

.method public hasFeature(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "XS-Loader"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    const-string v0, "1.0"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/dom/PSVIDOMImplementationImpl;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
