.class Lcom/freeme/elementscenter/ui/ECResourceManager$1;
.super Ljava/lang/Object;
.source "ECResourceManager.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/elementscenter/ui/ECResourceManager;->initGridView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/elementscenter/ui/ECResourceManager;


# direct methods
.method constructor <init>(Lcom/freeme/elementscenter/ui/ECResourceManager;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/elementscenter/ui/ECResourceManager$1;->this$0:Lcom/freeme/elementscenter/ui/ECResourceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    iget-object p1, p0, Lcom/freeme/elementscenter/ui/ECResourceManager$1;->this$0:Lcom/freeme/elementscenter/ui/ECResourceManager;

    invoke-static {p1}, Lcom/freeme/elementscenter/ui/ECResourceManager;->access$000(Lcom/freeme/elementscenter/ui/ECResourceManager;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/freeme/elementscenter/ui/ECResourceManager$1;->this$0:Lcom/freeme/elementscenter/ui/ECResourceManager;

    invoke-static {p1, p3}, Lcom/freeme/elementscenter/ui/ECResourceManager;->access$100(Lcom/freeme/elementscenter/ui/ECResourceManager;I)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
