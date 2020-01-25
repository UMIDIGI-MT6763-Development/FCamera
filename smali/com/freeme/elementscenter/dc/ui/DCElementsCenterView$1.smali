.class final Lcom/freeme/elementscenter/dc/ui/DCElementsCenterView$1;
.super Landroid/util/SparseArray;
.source "DCElementsCenterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/elementscenter/dc/ui/DCElementsCenterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/SparseArray<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    sget v0, Lcom/freeme/elementscenter/R$id;->watermark:I

    sget-object v1, Lcom/freeme/elementscenter/data/ECUtil;->TYPE_ARRAY:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/freeme/elementscenter/dc/ui/DCElementsCenterView$1;->put(ILjava/lang/Object;)V

    sget v0, Lcom/freeme/elementscenter/R$id;->child:I

    sget-object v1, Lcom/freeme/elementscenter/data/ECUtil;->TYPE_ARRAY:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/freeme/elementscenter/dc/ui/DCElementsCenterView$1;->put(ILjava/lang/Object;)V

    sget v0, Lcom/freeme/elementscenter/R$id;->pose:I

    sget-object v1, Lcom/freeme/elementscenter/data/ECUtil;->TYPE_ARRAY:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/freeme/elementscenter/dc/ui/DCElementsCenterView$1;->put(ILjava/lang/Object;)V

    sget v0, Lcom/freeme/elementscenter/R$id;->jigsaw:I

    sget-object v1, Lcom/freeme/elementscenter/data/ECUtil;->TYPE_ARRAY:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/freeme/elementscenter/dc/ui/DCElementsCenterView$1;->put(ILjava/lang/Object;)V

    return-void
.end method
