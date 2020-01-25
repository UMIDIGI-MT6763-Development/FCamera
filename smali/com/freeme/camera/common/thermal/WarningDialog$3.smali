.class Lcom/freeme/camera/common/thermal/WarningDialog$3;
.super Ljava/lang/Object;
.source "WarningDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/common/thermal/WarningDialog;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/common/thermal/WarningDialog;


# direct methods
.method constructor <init>(Lcom/freeme/camera/common/thermal/WarningDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/thermal/WarningDialog$3;->this$0:Lcom/freeme/camera/common/thermal/WarningDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/freeme/camera/common/thermal/WarningDialog$3;->this$0:Lcom/freeme/camera/common/thermal/WarningDialog;

    invoke-virtual {p1}, Lcom/freeme/camera/common/thermal/WarningDialog;->hide()V

    return-void
.end method
