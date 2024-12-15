.class public Lcom/craftechgroup/www/jissms/ListAdapterClass;
.super Landroid/widget/BaseAdapter;
.source "ListAdapterClass.java"


# instance fields
.field context:Landroid/content/Context;

.field valueList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/craftechgroup/www/jissms/Student;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .registers 3
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/craftechgroup/www/jissms/Student;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 22
    .local p1, "listValue":Ljava/util/List;, "Ljava/util/List<Lcom/craftechgroup/www/jissms/Student;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 23
    iput-object p2, p0, Lcom/craftechgroup/www/jissms/ListAdapterClass;->context:Landroid/content/Context;

    .line 24
    iput-object p1, p0, Lcom/craftechgroup/www/jissms/ListAdapterClass;->valueList:Ljava/util/List;

    .line 25
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/craftechgroup/www/jissms/ListAdapterClass;->valueList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 36
    iget-object v0, p0, Lcom/craftechgroup/www/jissms/ListAdapterClass;->valueList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 42
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 48
    const/4 v1, 0x0

    .line 50
    .local v1, "viewItem":Lcom/craftechgroup/www/jissms/ViewItem;
    if-nez p2, :cond_38

    .line 52
    new-instance v1, Lcom/craftechgroup/www/jissms/ViewItem;

    .end local v1    # "viewItem":Lcom/craftechgroup/www/jissms/ViewItem;
    invoke-direct {v1}, Lcom/craftechgroup/www/jissms/ViewItem;-><init>()V

    .line 54
    .restart local v1    # "viewItem":Lcom/craftechgroup/www/jissms/ViewItem;
    iget-object v2, p0, Lcom/craftechgroup/www/jissms/ListAdapterClass;->context:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 56
    .local v0, "layoutInfiater":Landroid/view/LayoutInflater;
    const v2, 0x7f040026

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 58
    const v2, 0x7f0b0098

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/craftechgroup/www/jissms/ViewItem;->TextViewStudentName:Landroid/widget/TextView;

    .line 60
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 67
    .end local v0    # "layoutInfiater":Landroid/view/LayoutInflater;
    :goto_28
    iget-object v3, v1, Lcom/craftechgroup/www/jissms/ViewItem;->TextViewStudentName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/craftechgroup/www/jissms/ListAdapterClass;->valueList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/craftechgroup/www/jissms/Student;

    iget-object v2, v2, Lcom/craftechgroup/www/jissms/Student;->StudentName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    return-object p2

    .line 64
    :cond_38
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "viewItem":Lcom/craftechgroup/www/jissms/ViewItem;
    check-cast v1, Lcom/craftechgroup/www/jissms/ViewItem;

    .restart local v1    # "viewItem":Lcom/craftechgroup/www/jissms/ViewItem;
    goto :goto_28
.end method
