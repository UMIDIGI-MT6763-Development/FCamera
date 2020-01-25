.class Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$MyAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "MatrixDisplayViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$MyAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field mPosition:I

.field mRotateLayout:Lcom/freeme/camera/common/widget/RotateLayout;

.field mTextView:Landroid/widget/TextView;

.field mTextureView:Landroid/view/TextureView;

.field final synthetic this$1:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$MyAdapter;


# direct methods
.method private constructor <init>(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$MyAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$MyAdapter$ViewHolder;->this$1:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$MyAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$MyAdapter;Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$MyAdapter$ViewHolder;-><init>(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$MyAdapter;)V

    return-void
.end method
