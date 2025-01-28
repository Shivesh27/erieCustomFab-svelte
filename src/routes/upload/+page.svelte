<script lang="ts">
    let file: File | undefined;
  
    const uploadFile = async () => {
      if (!file) {
        alert("Please select a file!");
        return;
      }
  
      const formData = new FormData();
      formData.append("file", file);
  
      const response = await fetch("/upload.php", {
        method: "POST",
        body: formData,
      });
  
      if (response.ok) {
        alert("File uploaded successfully!");
      } else {
        alert("Failed to upload the file.");
      }
    };
  </script>
  
  <form on:submit|preventDefault={uploadFile}>
    <input
      type="file"
      accept="image/*"
      on:change={(e) => (file = e?.target?.files?.[0])}
    />
    <button type="submit">Upload</button>
  </form>
  