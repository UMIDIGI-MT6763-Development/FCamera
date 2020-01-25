.class public Lcom/mediatek/plugin/element/ExtensionPoint;
.super Lcom/mediatek/plugin/element/Element;
.source "ExtensionPoint.java"


# instance fields
.field public className:Ljava/lang/String;

.field private mConnectedExtensions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/mediatek/plugin/element/Extension;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/plugin/element/Element;-><init>()V

    return-void
.end method


# virtual methods
.method public getConnectedExtensions()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/mediatek/plugin/element/Extension;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mediatek/plugin/element/ExtensionPoint;->mConnectedExtensions:Ljava/util/HashMap;

    return-object v0
.end method

.method public getParameterType(Ljava/lang/String;)Lcom/mediatek/plugin/element/ParameterDef$ParameterType;
    .locals 2

    iget-object v0, p0, Lcom/mediatek/plugin/element/ExtensionPoint;->mChilds:Ljava/util/HashMap;

    const-class v1, Lcom/mediatek/plugin/element/ParameterDef;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mediatek/plugin/element/ParameterDef;

    iget-object p1, p1, Lcom/mediatek/plugin/element/ParameterDef;->type:Lcom/mediatek/plugin/element/ParameterDef$ParameterType;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public printAllKeyValue(Ljava/lang/String;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/mediatek/plugin/element/Element;->printAllKeyValue(Ljava/lang/String;)V

    const-string v0, "className"

    iget-object v1, p0, Lcom/mediatek/plugin/element/ExtensionPoint;->className:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/mediatek/plugin/element/ExtensionPoint;->printKeyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mediatek/plugin/element/ExtensionPoint;->mConnectedExtensions:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    const-string v1, "mConnectedExtensions size "

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v1, v0}, Lcom/mediatek/plugin/element/ExtensionPoint;->printKeyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mediatek/plugin/element/ExtensionPoint;->mConnectedExtensions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "|    "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " extension = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/plugin/element/Extension;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/mediatek/plugin/element/ExtensionPoint;->printValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "mConnectedExtensions size "

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/mediatek/plugin/element/ExtensionPoint;->printKeyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setConnectedExtensions(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/mediatek/plugin/element/Extension;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mediatek/plugin/element/ExtensionPoint;->mConnectedExtensions:Ljava/util/HashMap;

    return-void
.end method
