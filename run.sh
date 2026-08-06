#!/bin/bash
# 🚀 تشغيل محرر سيف

SAIF_HOME="$(cd "$(dirname "$0")" && pwd)"
export PATH="$SAIF_HOME/saif-lang:$PATH"
export GEANY_HOME="$SAIF_HOME/config/geany"

# نسخ المكتبات إلى مجلد المشروع
mkdir -p "$SAIF_HOME/projects"
cp "$SAIF_HOME/saif-lang"/*.ع "$SAIF_HOME/projects/" 2>/dev/null

# إنشاء ملف افتراضي إذا لم يوجد
if [ ! -f "$SAIF_HOME/projects/مشروعي.سيف" ]; then
    cat > "$SAIF_HOME/projects/مشروعي.سيف" << 'EOF2'
#ادرج "كرتونة.ع"

عدد رئيسي() {
    اكتب_سطر("مرحباً من سيف!");
    ارجع نجاح;
}
EOF2
fi

# تشغيل Geany بدون تغيير اللغة
geany -c "$GEANY_HOME" "$SAIF_HOME/projects/مشروعي.سيف"
