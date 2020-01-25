.class public Lcom/freeme/camera/common/mode/IReviewUI$ReviewSpec;
.super Ljava/lang/Object;
.source "IReviewUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/mode/IReviewUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReviewSpec"
.end annotation


# instance fields
.field public playListener:Landroid/view/View$OnClickListener;

.field public retakeListener:Landroid/view/View$OnClickListener;

.field public saveListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/common/mode/IReviewUI$ReviewSpec;->retakeListener:Landroid/view/View$OnClickListener;

    iput-object v0, p0, Lcom/freeme/camera/common/mode/IReviewUI$ReviewSpec;->playListener:Landroid/view/View$OnClickListener;

    iput-object v0, p0, Lcom/freeme/camera/common/mode/IReviewUI$ReviewSpec;->saveListener:Landroid/view/View$OnClickListener;

    return-void
.end method
