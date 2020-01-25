.class public Lcom/mediatek/plugin/element/Extension;
.super Lcom/mediatek/plugin/element/Element;
.source "Extension.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PluginManager/Extension"


# instance fields
.field public className:Ljava/lang/String;

.field public drawable:Landroid/graphics/drawable/Drawable;

.field public extensionPointId:Ljava/lang/String;

.field private mExtensionPoint:Lcom/mediatek/plugin/element/ExtensionPoint;

.field public name:Ljava/lang/String;

.field public pluginId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/plugin/element/Element;-><init>()V

    return-void
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 2

    iget-object v0, p0, Lcom/mediatek/plugin/element/Extension;->mExtensionPoint:Lcom/mediatek/plugin/element/ExtensionPoint;

    invoke-virtual {v0, p1}, Lcom/mediatek/plugin/element/ExtensionPoint;->getParameterType(Ljava/lang/String;)Lcom/mediatek/plugin/element/ParameterDef$ParameterType;

    move-result-object v0

    sget-object v1, Lcom/mediatek/plugin/element/ParameterDef$ParameterType;->BOOLEAN:Lcom/mediatek/plugin/element/ParameterDef$ParameterType;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/mediatek/plugin/element/Extension;->getParameter(Ljava/lang/String;)Lcom/mediatek/plugin/element/Element;

    move-result-object p1

    check-cast p1, Lcom/mediatek/plugin/element/Parameter;

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/mediatek/plugin/element/Parameter;->value:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/mediatek/plugin/element/Parameter;->value:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    return p2

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Please Check the Type !"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDouble(Ljava/lang/String;D)D
    .locals 2

    iget-object v0, p0, Lcom/mediatek/plugin/element/Extension;->mExtensionPoint:Lcom/mediatek/plugin/element/ExtensionPoint;

    invoke-virtual {v0, p1}, Lcom/mediatek/plugin/element/ExtensionPoint;->getParameterType(Ljava/lang/String;)Lcom/mediatek/plugin/element/ParameterDef$ParameterType;

    move-result-object v0

    sget-object v1, Lcom/mediatek/plugin/element/ParameterDef$ParameterType;->DOUBLE:Lcom/mediatek/plugin/element/ParameterDef$ParameterType;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/mediatek/plugin/element/Extension;->getParameter(Ljava/lang/String;)Lcom/mediatek/plugin/element/Element;

    move-result-object p1

    check-cast p1, Lcom/mediatek/plugin/element/Parameter;

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/mediatek/plugin/element/Parameter;->value:Ljava/lang/String;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p1, p1, Lcom/mediatek/plugin/element/Parameter;->value:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    move-exception p1

    const-string v0, "PluginManager/Extension"

    const-string v1, "<getDouble>"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-wide p2

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Please Check the Type !"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 2

    iget-object v0, p0, Lcom/mediatek/plugin/element/Extension;->mExtensionPoint:Lcom/mediatek/plugin/element/ExtensionPoint;

    invoke-virtual {v0, p1}, Lcom/mediatek/plugin/element/ExtensionPoint;->getParameterType(Ljava/lang/String;)Lcom/mediatek/plugin/element/ParameterDef$ParameterType;

    move-result-object v0

    sget-object v1, Lcom/mediatek/plugin/element/ParameterDef$ParameterType;->FLOAT:Lcom/mediatek/plugin/element/ParameterDef$ParameterType;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/mediatek/plugin/element/Extension;->getParameter(Ljava/lang/String;)Lcom/mediatek/plugin/element/Element;

    move-result-object p1

    check-cast p1, Lcom/mediatek/plugin/element/Parameter;

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/mediatek/plugin/element/Parameter;->value:Ljava/lang/String;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p1, p1, Lcom/mediatek/plugin/element/Parameter;->value:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const-string v0, "PluginManager/Extension"

    const-string v1, "<getFloat>"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return p2

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Please Check the Type !"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 2

    iget-object v0, p0, Lcom/mediatek/plugin/element/Extension;->mExtensionPoint:Lcom/mediatek/plugin/element/ExtensionPoint;

    invoke-virtual {v0, p1}, Lcom/mediatek/plugin/element/ExtensionPoint;->getParameterType(Ljava/lang/String;)Lcom/mediatek/plugin/element/ParameterDef$ParameterType;

    move-result-object v0

    sget-object v1, Lcom/mediatek/plugin/element/ParameterDef$ParameterType;->INT:Lcom/mediatek/plugin/element/ParameterDef$ParameterType;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/mediatek/plugin/element/Extension;->getParameter(Ljava/lang/String;)Lcom/mediatek/plugin/element/Element;

    move-result-object p1

    check-cast p1, Lcom/mediatek/plugin/element/Parameter;

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/mediatek/plugin/element/Parameter;->value:Ljava/lang/String;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p1, p1, Lcom/mediatek/plugin/element/Parameter;->value:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const-string v0, "PluginManager/Extension"

    const-string v1, "<getInt>"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return p2

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Please Check thes Type !"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 2

    iget-object v0, p0, Lcom/mediatek/plugin/element/Extension;->mExtensionPoint:Lcom/mediatek/plugin/element/ExtensionPoint;

    invoke-virtual {v0, p1}, Lcom/mediatek/plugin/element/ExtensionPoint;->getParameterType(Ljava/lang/String;)Lcom/mediatek/plugin/element/ParameterDef$ParameterType;

    move-result-object v0

    sget-object v1, Lcom/mediatek/plugin/element/ParameterDef$ParameterType;->LONG:Lcom/mediatek/plugin/element/ParameterDef$ParameterType;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/mediatek/plugin/element/Extension;->getParameter(Ljava/lang/String;)Lcom/mediatek/plugin/element/Element;

    move-result-object p1

    check-cast p1, Lcom/mediatek/plugin/element/Parameter;

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/mediatek/plugin/element/Parameter;->value:Ljava/lang/String;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p1, p1, Lcom/mediatek/plugin/element/Parameter;->value:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    move-exception p1

    const-string v0, "PluginManager/Extension"

    const-string v1, "<getLong>"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-wide p2

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Please Check the Type !"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getParameter(Ljava/lang/String;)Lcom/mediatek/plugin/element/Element;
    .locals 2

    iget-object v0, p0, Lcom/mediatek/plugin/element/Extension;->mChilds:Ljava/util/HashMap;

    const-class v1, Lcom/mediatek/plugin/element/Parameter;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mediatek/plugin/element/Element;

    return-object p1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mediatek/plugin/element/Extension;->mExtensionPoint:Lcom/mediatek/plugin/element/ExtensionPoint;

    invoke-virtual {v0, p1}, Lcom/mediatek/plugin/element/ExtensionPoint;->getParameterType(Ljava/lang/String;)Lcom/mediatek/plugin/element/ParameterDef$ParameterType;

    move-result-object v0

    sget-object v1, Lcom/mediatek/plugin/element/ParameterDef$ParameterType;->STRING:Lcom/mediatek/plugin/element/ParameterDef$ParameterType;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/mediatek/plugin/element/Extension;->getParameter(Ljava/lang/String;)Lcom/mediatek/plugin/element/Element;

    move-result-object p1

    check-cast p1, Lcom/mediatek/plugin/element/Parameter;

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/mediatek/plugin/element/Parameter;->value:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/mediatek/plugin/element/Parameter;->value:Ljava/lang/String;

    return-object p1

    :cond_0
    return-object p2

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Please Check the Type !"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public printAllKeyValue(Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/mediatek/plugin/element/Element;->printAllKeyValue(Ljava/lang/String;)V

    const-string v0, "name"

    iget-object v1, p0, Lcom/mediatek/plugin/element/Extension;->name:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/mediatek/plugin/element/Extension;->printKeyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pluginId"

    iget-object v1, p0, Lcom/mediatek/plugin/element/Extension;->pluginId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/mediatek/plugin/element/Extension;->printKeyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "extensionPointId"

    iget-object v1, p0, Lcom/mediatek/plugin/element/Extension;->extensionPointId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/mediatek/plugin/element/Extension;->printKeyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "drawable"

    iget-object v1, p0, Lcom/mediatek/plugin/element/Extension;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/mediatek/plugin/element/Extension;->printKeyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "className"

    iget-object v1, p0, Lcom/mediatek/plugin/element/Extension;->className:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/mediatek/plugin/element/Extension;->printKeyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setExtensionPoint(Lcom/mediatek/plugin/element/ExtensionPoint;)V
    .locals 0

    iput-object p1, p0, Lcom/mediatek/plugin/element/Extension;->mExtensionPoint:Lcom/mediatek/plugin/element/ExtensionPoint;

    return-void
.end method
