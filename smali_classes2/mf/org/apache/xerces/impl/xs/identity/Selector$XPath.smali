.class public Lmf/org/apache/xerces/impl/xs/identity/Selector$XPath;
.super Lmf/org/apache/xerces/impl/xpath/XPath;
.source "Selector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/xs/identity/Selector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XPath"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/NamespaceContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/XPathException;
        }
    .end annotation

    invoke-static {p1}, Lmf/org/apache/xerces/impl/xs/identity/Selector$XPath;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lmf/org/apache/xerces/impl/xpath/XPath;-><init>(Ljava/lang/String;Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/NamespaceContext;)V

    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Lmf/org/apache/xerces/impl/xs/identity/Selector$XPath;->fLocationPaths:[Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    array-length p2, p2

    if-lt p1, p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lmf/org/apache/xerces/impl/xs/identity/Selector$XPath;->fLocationPaths:[Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    aget-object p2, p2, p1

    iget-object p2, p2, Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;->steps:[Lmf/org/apache/xerces/impl/xpath/XPath$Step;

    iget-object p3, p0, Lmf/org/apache/xerces/impl/xs/identity/Selector$XPath;->fLocationPaths:[Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    aget-object p3, p3, p1

    iget-object p3, p3, Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;->steps:[Lmf/org/apache/xerces/impl/xpath/XPath$Step;

    array-length p3, p3

    add-int/lit8 p3, p3, -0x1

    aget-object p2, p2, p3

    iget-object p2, p2, Lmf/org/apache/xerces/impl/xpath/XPath$Step;->axis:Lmf/org/apache/xerces/impl/xpath/XPath$Axis;

    iget-short p2, p2, Lmf/org/apache/xerces/impl/xpath/XPath$Axis;->type:S

    const/4 p3, 0x2

    if-eq p2, p3, :cond_1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Lmf/org/apache/xerces/impl/xpath/XPathException;

    const-string p2, "c-selector-xpath"

    invoke-direct {p1, p2}, Lmf/org/apache/xerces/impl/xpath/XPathException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    :goto_0
    invoke-static {p0}, Lmf/org/apache/xerces/util/XMLChar;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lmf/org/apache/xerces/util/XMLChar;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "./"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const/16 v1, 0x7c

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v2, 0x0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method
