.class public Lmf/org/apache/wml/dom/WMLElementImpl;
.super Lmf/org/apache/xerces/dom/ElementImpl;
.source "WMLElementImpl.java"

# interfaces
.implements Lmf/org/apache/wml/WMLElement;


# static fields
.field private static final serialVersionUID:J = 0x2fc0d55b31447e94L


# direct methods
.method public constructor <init>(Lmf/org/apache/wml/dom/WMLDocumentImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/dom/ElementImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method getAttribute(Ljava/lang/String;I)I
    .locals 0

    const-string p1, "emptyok"

    invoke-virtual {p0, p1}, Lmf/org/apache/wml/dom/WMLElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    :cond_0
    return p2
.end method

.method getAttribute(Ljava/lang/String;Z)Z
    .locals 1

    const-string p1, "emptyok"

    invoke-virtual {p0, p1}, Lmf/org/apache/wml/dom/WMLElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    :cond_0
    return p2
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "class"

    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const-string v0, "id"

    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getXmlLang()Ljava/lang/String;
    .locals 1

    const-string v0, "xml:lang"

    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method setAttribute(Ljava/lang/String;I)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lmf/org/apache/wml/dom/WMLElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method setAttribute(Ljava/lang/String;Z)V
    .locals 0

    if-eqz p2, :cond_0

    const-string p2, "true"

    goto :goto_0

    :cond_0
    const-string p2, "false"

    :goto_0
    invoke-virtual {p0, p1, p2}, Lmf/org/apache/wml/dom/WMLElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "class"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "id"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setXmlLang(Ljava/lang/String;)V
    .locals 1

    const-string v0, "xml:lang"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
