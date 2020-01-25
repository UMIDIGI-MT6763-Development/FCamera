.class public Lcom/mediatek/plugin/element/ParameterDef;
.super Lcom/mediatek/plugin/element/Element;
.source "ParameterDef.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/plugin/element/ParameterDef$ParameterType;
    }
.end annotation


# instance fields
.field public type:Lcom/mediatek/plugin/element/ParameterDef$ParameterType;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/plugin/element/Element;-><init>()V

    return-void
.end method


# virtual methods
.method public printAllKeyValue(Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/mediatek/plugin/element/Element;->printAllKeyValue(Ljava/lang/String;)V

    const-string v0, "type"

    iget-object v1, p0, Lcom/mediatek/plugin/element/ParameterDef;->type:Lcom/mediatek/plugin/element/ParameterDef$ParameterType;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/mediatek/plugin/element/ParameterDef;->printKeyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
