.class Lcom/freeme/camera/feature/setting/eis/EIS$3;
.super Ljava/lang/Object;
.source "EIS.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/setting/eis/EIS;->updateValue(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/eis/EIS;

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/eis/EIS;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/eis/EIS$3;->this$0:Lcom/freeme/camera/feature/setting/eis/EIS;

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/eis/EIS$3;->val$value:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/eis/EIS$3;->this$0:Lcom/freeme/camera/feature/setting/eis/EIS;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/eis/EIS;->access$1000(Lcom/freeme/camera/feature/setting/eis/EIS;)Lcom/freeme/camera/common/relation/DataStore;

    move-result-object v1

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/eis/EIS$3;->this$0:Lcom/freeme/camera/feature/setting/eis/EIS;

    invoke-virtual {v2}, Lcom/freeme/camera/feature/setting/eis/EIS;->getKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/eis/EIS$3;->val$value:Ljava/lang/String;

    iget-object v4, p0, Lcom/freeme/camera/feature/setting/eis/EIS$3;->this$0:Lcom/freeme/camera/feature/setting/eis/EIS;

    invoke-virtual {v4}, Lcom/freeme/camera/feature/setting/eis/EIS;->getStoreScope()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/freeme/camera/common/relation/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/eis/EIS;->setValue(Ljava/lang/String;)V

    return-void
.end method
