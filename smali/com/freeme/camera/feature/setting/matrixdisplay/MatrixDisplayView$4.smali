.class Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView$4;
.super Ljava/lang/Object;
.source "MatrixDisplayView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->scrollViewToPrvPage(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;

.field final synthetic val$child:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;Landroid/widget/LinearLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView$4;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView$4;->val$child:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView$4;->val$child:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    :cond_0
    return-void
.end method
