.class Lcom/freeme/elementscenter/ui/ECResourceManager$2;
.super Ljava/lang/Object;
.source "ECResourceManager.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

    iput-object p1, p0, Lcom/freeme/elementscenter/ui/ECResourceManager$2;->this$0:Lcom/freeme/elementscenter/ui/ECResourceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/freeme/elementscenter/ui/ECResourceManager$2;->this$0:Lcom/freeme/elementscenter/ui/ECResourceManager;

    invoke-static {p1}, Lcom/freeme/elementscenter/ui/ECResourceManager;->access$000(Lcom/freeme/elementscenter/ui/ECResourceManager;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget p1, Lcom/freeme/elementscenter/R$id;->ec_check:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iget-object p2, p0, Lcom/freeme/elementscenter/ui/ECResourceManager$2;->this$0:Lcom/freeme/elementscenter/ui/ECResourceManager;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p2, p3, p1}, Lcom/freeme/elementscenter/ui/ECResourceManager;->access$200(Lcom/freeme/elementscenter/ui/ECResourceManager;IZ)V

    :cond_0
    return-void
.end method
