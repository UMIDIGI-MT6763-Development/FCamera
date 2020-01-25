.class Lcom/mediatek/plugin/PluginRegistry$PluginEntry;
.super Ljava/lang/Object;
.source "PluginRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/plugin/PluginRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PluginEntry"
.end annotation


# instance fields
.field private mDescriptor:Lcom/mediatek/plugin/element/PluginDescriptor;

.field private mPlugin:Lcom/mediatek/plugin/Plugin;

.field final synthetic this$0:Lcom/mediatek/plugin/PluginRegistry;


# direct methods
.method public constructor <init>(Lcom/mediatek/plugin/PluginRegistry;Lcom/mediatek/plugin/element/PluginDescriptor;)V
    .locals 0

    iput-object p1, p0, Lcom/mediatek/plugin/PluginRegistry$PluginEntry;->this$0:Lcom/mediatek/plugin/PluginRegistry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/mediatek/plugin/PluginRegistry$PluginEntry;->mDescriptor:Lcom/mediatek/plugin/element/PluginDescriptor;

    return-void
.end method


# virtual methods
.method public getDescriptor()Lcom/mediatek/plugin/element/PluginDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/plugin/PluginRegistry$PluginEntry;->mDescriptor:Lcom/mediatek/plugin/element/PluginDescriptor;

    return-object v0
.end method

.method public getPlugin()Lcom/mediatek/plugin/Plugin;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/plugin/PluginRegistry$PluginEntry;->mPlugin:Lcom/mediatek/plugin/Plugin;

    return-object v0
.end method

.method public setPlugin(Lcom/mediatek/plugin/Plugin;)V
    .locals 0

    iput-object p1, p0, Lcom/mediatek/plugin/PluginRegistry$PluginEntry;->mPlugin:Lcom/mediatek/plugin/Plugin;

    return-void
.end method
