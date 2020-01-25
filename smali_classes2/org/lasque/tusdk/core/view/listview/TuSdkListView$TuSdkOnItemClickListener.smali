.class public Lorg/lasque/tusdk/core/view/listview/TuSdkListView$TuSdkOnItemClickListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/view/listview/TuSdkListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TuSdkOnItemClickListener"
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/view/listview/TuSdkListView;


# direct methods
.method protected constructor <init>(Lorg/lasque/tusdk/core/view/listview/TuSdkListView;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListView$TuSdkOnItemClickListener;->a:Lorg/lasque/tusdk/core/view/listview/TuSdkListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListView$TuSdkOnItemClickListener;->a:Lorg/lasque/tusdk/core/view/listview/TuSdkListView;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->onListViewItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
