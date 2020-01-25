.class public Lmf/org/apache/html/dom/HTMLElementImpl;
.super Lmf/org/apache/xerces/dom/ElementImpl;
.source "HTMLElementImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/html/HTMLElement;


# static fields
.field private static final serialVersionUID:J = 0x495446041ee2bb47L


# direct methods
.method public constructor <init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/dom/ElementImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method capitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_1

    const/4 p1, 0x0

    aget-char v1, v0, p1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    aput-char v1, v0, p1

    const/4 p1, 0x1

    :goto_0
    array-length v1, v0

    if-lt p1, v1, :cond_0

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    aget-char v1, v0, p1

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    aput-char v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Lmf/org/apache/xerces/dom/ElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/dom/ElementImpl;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p2, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Lmf/org/apache/xerces/dom/ElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAttributeNode(Ljava/lang/String;)Lmf/org/w3c/dom/Attr;
    .locals 1

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Lmf/org/apache/xerces/dom/ElementImpl;->getAttributeNode(Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object p1

    return-object p1
.end method

.method public getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Attr;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/dom/ElementImpl;->getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p2, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Lmf/org/apache/xerces/dom/ElementImpl;->getAttributeNode(Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object p1

    return-object p1
.end method

.method getBinary(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lmf/org/apache/html/dom/HTMLElementImpl;->getAttributeNode(Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method getCapitalized(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lmf/org/apache/html/dom/HTMLElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_1

    const/4 p1, 0x0

    aget-char v1, v0, p1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    aput-char v1, v0, p1

    const/4 p1, 0x1

    :goto_0
    array-length v1, v0

    if-lt p1, v1, :cond_0

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    aget-char v1, v0, p1

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    aput-char v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "class"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDir()Ljava/lang/String;
    .locals 1

    const-string v0, "dir"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getElementsByTagName(Ljava/lang/String;)Lmf/org/w3c/dom/NodeList;
    .locals 1

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Lmf/org/apache/xerces/dom/ElementImpl;->getElementsByTagName(Ljava/lang/String;)Lmf/org/w3c/dom/NodeList;

    move-result-object p1

    return-object p1
.end method

.method public final getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/NodeList;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/dom/ElementImpl;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/NodeList;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p2, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Lmf/org/apache/xerces/dom/ElementImpl;->getElementsByTagName(Ljava/lang/String;)Lmf/org/w3c/dom/NodeList;

    move-result-object p1

    return-object p1
.end method

.method public getForm()Lmf/org/w3c/dom/html/HTMLFormElement;
    .locals 2

    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLElementImpl;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    instance-of v1, v0, Lmf/org/w3c/dom/html/HTMLFormElement;

    if-eqz v1, :cond_1

    check-cast v0, Lmf/org/w3c/dom/html/HTMLFormElement;

    return-object v0

    :cond_1
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const-string v0, "id"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getInteger(Ljava/lang/String;)I
    .locals 0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public getLang()Ljava/lang/String;
    .locals 1

    const-string v0, "lang"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "title"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method setAttribute(Ljava/lang/String;Z)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1, p1}, Lmf/org/apache/html/dom/HTMLElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lmf/org/apache/html/dom/HTMLElementImpl;->removeAttribute(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "class"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDir(Ljava/lang/String;)V
    .locals 1

    const-string v0, "dir"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "id"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLang(Ljava/lang/String;)V
    .locals 1

    const-string v0, "lang"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    const-string v0, "title"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
